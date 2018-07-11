package com.cs.trade.validation.customer;

import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SupportedCustomerValidator {

	private final CustomerRepository customerRepository;

	@Autowired
	public SupportedCustomerValidator(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	public boolean isSupported(String customerName) {
		final Set<String> supportedCustomers = customerRepository.findAll().stream().map(Customer::getName).collect(Collectors.toSet());
		return supportedCustomers.contains(customerName);
	}

}

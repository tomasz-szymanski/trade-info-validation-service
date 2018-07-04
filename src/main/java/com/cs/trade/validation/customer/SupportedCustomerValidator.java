package com.cs.trade.validation.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class SupportedCustomerValidator {

    private Set<String> supportedCustomers;

    @Autowired
    private CustomerRepository customerRepository;

    @PostConstruct
    private void init() {
        supportedCustomers = customerRepository.findAll().stream().map(Customer::getName).collect(Collectors.toSet());
    }

    public boolean isSupported(String customerName) {
        return supportedCustomers.contains(customerName);
    }

}

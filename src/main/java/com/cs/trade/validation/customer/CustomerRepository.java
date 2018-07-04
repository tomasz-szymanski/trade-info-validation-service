package com.cs.trade.validation.customer;

import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface CustomerRepository extends CrudRepository<Customer, Long> {
    List<Customer> findAll();
}

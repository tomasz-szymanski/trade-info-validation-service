package com.cs.trade.validation.options.style;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface TransactionStyleRepository extends CrudRepository<TransactionStyle, Long> {
    List<TransactionStyle> findAll();
}

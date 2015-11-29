package com.socgen.poc.service;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;

@ContextConfiguration(locations = {"classpath:spring-context/hms-core-ctx.xml"})
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)
public class AbstractTestContextLoader extends AbstractTransactionalJUnit4SpringContextTests{

}

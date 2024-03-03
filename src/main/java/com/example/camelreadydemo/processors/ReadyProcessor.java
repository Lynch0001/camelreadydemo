package com.example.camelreadydemo.processors;

import com.example.camelreadydemo.CamelreadydemoApplication;
import org.apache.camel.Exchange;
import org.apache.camel.Message;
import org.apache.camel.Processor;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ReadyProcessor implements Processor {

    public void process(Exchange exchange) throws Exception {
        Logger log = LogManager.getLogger(ReadyProcessor.class);
        log.info("Ready Check Activated");
        exchange.getIn();
        Message out = exchange.getMessage();
        out.setHeader(Exchange.HTTP_RESPONSE_CODE, 200);
    }
}

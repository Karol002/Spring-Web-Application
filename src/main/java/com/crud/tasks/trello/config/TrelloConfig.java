package com.crud.tasks.trello.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@Getter
public class TrelloConfig {
    //@Value("${trello.api.endpoint.prod}")
    private String trelloApiEndpoint = "https://api.trello.com/1";
    //@Value("${trello.app.key}")
    private String trelloAppKey = "1131e01ffbd08dd322562c344798e668";
    //@Value("${trello.app.token}")
    private String trelloToken = "ATTA6e37af2de3c0fb17aa3b2cf2e2e966504c3ffc8786fb43b5c37118dc9cf3e304E02AA3EA";
    //@Value("${trello.app.user}")
    private String trelloUser = "karolwojcik6";
}
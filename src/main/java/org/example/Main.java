package org.example;


import org.example.domain.User;
import org.example.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        UserService userService = (UserService) context.getBean(UserService.class);

        User user = User.builder()
                .id(1L)
                .firstName("ghizlane")
                .lastName("meqdar")
                .identificationDocument("identificationDocument")
                .nationality("Morracan")
                .registrationDate(LocalDate.now())
                .accountExpirationDate(LocalDate.now())
                .build();

        userService.save(user);
        System.out.println(userService.findById(user.getId()));
    }
}
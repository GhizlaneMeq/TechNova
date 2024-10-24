package org.example.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String firstName;
    @Column(nullable = false)
    private String lastName;
    @Column(nullable = false)
    private String identificationDocument;
    @Column(nullable = false)
    private String nationality;
    @Column(nullable = false)
    private LocalDate registrationDate;
    @Column(nullable = false)
    private LocalDate accountExpirationDate;
}

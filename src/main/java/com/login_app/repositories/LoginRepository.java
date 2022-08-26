package com.login_app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.login_app.entities.Login;

public interface LoginRepository extends JpaRepository<Login, Long> {

}

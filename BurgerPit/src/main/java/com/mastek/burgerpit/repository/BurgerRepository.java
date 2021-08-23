package com.mastek.burgerpit.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.mastek.burgerpit.entity.Burger;

public interface BurgerRepository extends JpaRepository<Burger, Long> {

	@RestResource(path = "categoryid")
	Page<Burger> findByCategoryId(@Param("id") Long id, Pageable pageable);

	@RestResource(path = "searchbykeyword")
	Page<Burger> findByNameContaining(@Param("name") String keyword, Pageable pageable);
}

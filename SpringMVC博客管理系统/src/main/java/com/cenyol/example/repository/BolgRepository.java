package com.cenyol.example.repository;

import com.cenyol.example.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by 熊显付 on 2017/4/11.
 */
@ResponseBody
public interface BolgRepository extends JpaRepository<BlogEntity, Integer> {
}

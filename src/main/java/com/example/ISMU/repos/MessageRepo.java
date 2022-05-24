package com.example.ISMU.repos;
import org.springframework.data.repository.CrudRepository;
import com.example.ISMU.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
List<Message> findByTag(String tag);
    }


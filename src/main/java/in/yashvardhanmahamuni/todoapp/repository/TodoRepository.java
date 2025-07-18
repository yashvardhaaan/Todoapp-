package in.yashvardhanmahamuni.todoapp.repository;

import in.yashvardhanmahamuni.todoapp.entity.TodoEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository <TodoEntity, Long>{
}

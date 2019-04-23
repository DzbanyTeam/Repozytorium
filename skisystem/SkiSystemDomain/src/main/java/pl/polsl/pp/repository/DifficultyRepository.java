package pl.polsl.pp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.polsl.pp.model.Difficulty;

@Repository
public interface DifficultyRepository extends CrudRepository<Difficulty, Long> {
}
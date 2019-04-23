package pl.polsl.pp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.polsl.pp.model.Lift;

@Repository
public interface LiftRepository extends CrudRepository<Lift, Long> {
}
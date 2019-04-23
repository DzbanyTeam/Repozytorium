package pl.polsl.pp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.polsl.pp.model.Slope;

@Repository
public interface SlopeRepository extends CrudRepository<Slope, Long> {
}
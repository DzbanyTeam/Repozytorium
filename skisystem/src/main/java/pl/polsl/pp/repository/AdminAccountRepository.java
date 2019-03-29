package pl.polsl.pp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.polsl.pp.model.AdminAccount;


@Repository
public interface AdminAccountRepository extends CrudRepository<AdminAccount, Long> {
}

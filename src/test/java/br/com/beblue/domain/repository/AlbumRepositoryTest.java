package br.com.beblue.domain.repository;

import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

@Ignore
@RunWith(SpringRunner.class)
@DataJpaTest
public class AlbumRepositoryTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private AlbumRepository albumRepository;

}

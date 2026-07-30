package org.example;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.HashMap;
import java.util.Map;

public final class JpaUtil {

    private static final EntityManagerFactory emf = createEntityManagerFactory();

    private static EntityManagerFactory createEntityManagerFactory() {

        Map<String, Object> properties = new HashMap<>();

        String host = System.getenv("DB_HOST");
        String port = System.getenv("DB_PORT");
        String database = System.getenv("DB_NAME");
        String connection = String.format("jdbc:postgresql://%s:%s/%s", host, port, database);

        properties.put("jakarta.persistence.jdbc.url", connection);
        properties.put("jakarta.persistence.jdbc.user", System.getenv("DB_USERNAME"));
        properties.put("jakarta.persistence.jdbc.password", System.getenv("DB_PASSWORD"));

        return Persistence.createEntityManagerFactory("mystore", properties);
    }

    public static EntityManager createEntityManager() {
        return emf.createEntityManager();
    }

    public static void close() {
        emf.close();
    }
}

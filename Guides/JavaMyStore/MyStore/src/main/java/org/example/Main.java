package org.example;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.example.entity.Product;
import java.util.List;
import java.util.Scanner;
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        EntityManager em = JpaUtil.createEntityManager();

        List<Product> products = em.createQuery("SELECT p FROM Product p", Product.class).getResultList();
        printProducts(products);

        em.close();
        JpaUtil.close();
        closingApp();
    }

    public static void printProducts(List<Product> products){
        System.out.println("+----+----------------------+--------+------------+--------------------------------------------------------------+");
        System.out.printf("| %-2s | %-20s | %6s | %10s | %-60s |%n",
            "ID", "Name", "Stock", "Price", "Description");
        System.out.println("+----+----------------------+--------+------------+--------------------------------------------------------------+");
        for (Product product : products) {
            System.out.printf(
                "| %-2d | %-20s | %6d | %10.2f | %-60s |%n",
                product.getId(),
                product.getName(),
                product.getStock(),
                product.getPrice(),
                product.getDescription());
        }
        System.out.println("+----+----------------------+--------+------------+--------------------------------------------------------------+");
    }

    public static void closingApp(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Press any enter to exit.");
        scanner.nextLine();
        scanner.close();
        System.out.println("Bye...");
        System.exit(0);
    }
}
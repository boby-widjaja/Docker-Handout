import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ProductManager {
    private static Map<Integer, Product> products = new HashMap();

    public static void initiateProducts(){
        products.put(1, new Product(
            1,
            "Laptop",
            15,
            12500000.0,
            "Asus Indonesia",
            "Laptop gaming RTX 4060"
        ));
        products.put(2, new Product(
            2,
            "Mechanical Keyboard",
            30,
            950000.0,
            "Keychron",
            "Keyboard mechanical wireless"
        ));
        products.put(3, new Product(
            3,
            "Monitor",
            12,
            3200000.0,
            "LG Electronics",
            "Monitor IPS 27 inch"
        ));
        products.put(4, new Product(
            4,
            "Wireless Mouse",
            50,
            450000.0,
            "Logitech",
            "Mouse wireless ergonomis"
        ));
        products.put(5, new Product(
            5,
            "External SSD",
            20,
            1800000.0,
            "Samsung",
            "SSD external 1TB USB-C"
        ));
    }

    public static void printAllProducts(){
        System.out.printf("%-5s %-20s %-10s\n", "ID", "NAME", "PRICE");
        for(var product : products.values()){
            product.printSummary();
        }
    }

    public static void menu(){
        var scanner = new Scanner(System.in);
        var isEnded = false;

        while(!isEnded){
            printAllProducts();
            System.out.println("\nSilahkan pilih id product yang di-inginkan untuk melihat informasi detailnya.\nApabila ingin exit dari app, ketik 0:");
            var id = receiveId(scanner);
            if(id == 0){
                isEnded = true;
                break;
            }
            findProduct(id);
        }
        System.out.println("Exit the system...");
        scanner.close();
        System.exit(0);
    }

    public static Integer receiveId(Scanner scanner){
        Integer id = null;
        while(id == null){
            try{
                var input = scanner.nextLine();
                id = Integer.parseInt(input);
            } catch (Exception e) {
                System.out.println("Input tidak bisa diconversi jadi integer. Silahkan coba lagi.");
            }
        }
        return id;
    }

    public static Product findProduct(Integer id){
        var product = products.get(id);
        if(product == null){
            System.out.println("Id product tidak ditemukan.\n");
        } else {
            product.printDetail();
        }
        return product;
    }
}

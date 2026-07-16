import java.text.NumberFormat;
import java.util.Locale;
import java.util.function.DoubleFunction;

public class Product {
    private Integer id;
    private String name;
    private Integer stock;
    private Double price;
    private String supplier;
    private String description;

    public Product(Integer id, String name, Integer stock, Double price, String supplier, String description) {
        this.id = id;
        this.name = name;
        this.stock = stock;
        this.price = price;
        this.supplier = supplier;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Double getPrice() {
        return price;
    }

    public String getPriceInRupiah(){
        var indonesia = Locale.of("id", "ID");
        var rupiahFormat = NumberFormat.getCurrencyInstance(indonesia);
        return rupiahFormat.format(price);
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void printSummary(){
        System.out.printf("%-5s %-20s %-10s\n", this.id, this.name, this.getPriceInRupiah());
    }

    public void printDetail(){
        System.out.println("\n========================================================================");
        System.out.printf("Id: %s\nName: %s\nStock: %s unit\nPrice: %s\nSupplier: %s\nDescription: %s\n",
            this.id, this.name, this.stock, this.getPriceInRupiah(), this.supplier, this.description);
        System.out.println("========================================================================\n");
    }
}

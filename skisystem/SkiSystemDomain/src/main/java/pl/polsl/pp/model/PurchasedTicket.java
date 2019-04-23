package pl.polsl.pp.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Klasa reprezentująca zakupiony bilet
 */
@Entity
@Table(name = "Purchased_Tickets")
public class PurchasedTicket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="customer_id", nullable = false)
    private CustomerAccount customer;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="price_id", nullable = false)
    private Price price;

    @Column(nullable = false)
    private Date purchaseDatetime;

    @Column(nullable = false)
    private Date expirationDatetime;

    @Column(nullable = false)
    boolean isActive;

    public PurchasedTicket(CustomerAccount customer, Price price, Date purchaseDatetime, Date expirationDatetime, boolean isActive) {
        this.customer = customer;
        this.price = price;
        this.purchaseDatetime = purchaseDatetime;
        this.expirationDatetime = expirationDatetime;
        this.isActive = isActive;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public CustomerAccount getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerAccount customer) {
        this.customer = customer;
    }

    public Price getPrice() {
        return price;
    }

    public void setPrice(Price price) {
        this.price = price;
    }

    public Date getPurchaseDatetime() {
        return purchaseDatetime;
    }

    public void setPurchaseDatetime(Date purchaseDatetime) {
        this.purchaseDatetime = purchaseDatetime;
    }

    public Date getExpirationDatetime() {
        return expirationDatetime;
    }

    public void setExpirationDatetime(Date expirationDatetime) {
        this.expirationDatetime = expirationDatetime;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }
}
package pl.polsl.pp.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "CustomerAccounts")
public class CustomerAccount implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "users_sequence")
    long id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column
    private String password;

    @Column
    private Boolean isActive;

    @Column
    private String name;

    @Column
    private String surname;

    @Column
    private String email;

    @Column
    private String phoneNumber;

//    @ManyToMany
//    @JoinTable(name="Users2Roles", joinColumns=@JoinColumn(name="user_id"), inverseJoinColumns=@JoinColumn(name="role_id"))
//    private Set<Role> roles;

    public CustomerAccount() {
    }

    public CustomerAccount(String username, String password, Boolean isActive, String name, String surname, String email, String phoneNumber) {
        this.username = username;
        this.password = password;
        this.isActive = isActive;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
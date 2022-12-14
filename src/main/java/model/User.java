package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private int id;
    private String login;
    private String password;
    private int role;

    public User(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public User(String login, String password, int role) {
        this.login = login;
        this.password = password;
        this.role = role;
    }
}

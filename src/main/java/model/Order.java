package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Order {
    private int orderId;
    private int userId;
    private int roomId;

    public Order(int userId, int roomId) {
        this.userId = userId;
        this.roomId = roomId;
    }
}

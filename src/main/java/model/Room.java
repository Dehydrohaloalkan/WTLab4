package model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class Room {
    private int id;
    private int number;
    private boolean isReserved;

    public Room(int number, boolean isReserved) {
        this.number = number;
        this.isReserved = isReserved;
    }
}

package data;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class DataFromTable {
    private double x;
    private double y;
    private double r;
    private String time;
    private String answer;
    private boolean isValid;
    private double scripTime;
}

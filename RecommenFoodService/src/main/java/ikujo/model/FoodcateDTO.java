package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class FoodcateDTO {
	private int foodid;
	private String foodnm;
	private String label;
	private BigDecimal kcal;
	private BigDecimal carbohydrate;
	private BigDecimal protein;
	private BigDecimal fat;
	private String img;

}

package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ShowFoodDTO {
	
	private String udate;
	private BigDecimal foodId;
	@NonNull private String foodNm;
	private String label;
	private BigDecimal kcal;
	private BigDecimal carbohydrate;
	private BigDecimal protein;
	private BigDecimal fat;
	private BigDecimal sugar;
	private BigDecimal ca;
	private BigDecimal fe;
	private BigDecimal mg;
	private BigDecimal na;
	private BigDecimal k;
	private BigDecimal vitaminB;
	private BigDecimal vitaminC;
	private String img;
	
	public ShowFoodDTO(BigDecimal foodId, @NonNull String foodNm, String label, BigDecimal kcal,
			BigDecimal carbohydrate, BigDecimal protein, BigDecimal fat, BigDecimal sugar, BigDecimal ca, BigDecimal fe,
			BigDecimal mg, BigDecimal na, BigDecimal k, BigDecimal vitaminB, BigDecimal vitaminC, String img) {
		this.foodId = foodId;
		this.foodNm = foodNm;
		this.label = label;
		this.kcal = kcal;
		this.carbohydrate = carbohydrate;
		this.protein = protein;
		this.fat = fat;
		this.sugar = sugar;
		this.ca = ca;
		this.fe = fe;
		this.mg = mg;
		this.na = na;
		this.k = k;
		this.vitaminB = vitaminB;
		this.vitaminC = vitaminC;
		this.img = img;
	}

}
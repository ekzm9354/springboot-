package ikujo.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class referenceDTO {

	
	private String udate;
	@NonNull private BigDecimal kcal;
	@NonNull private BigDecimal carbohydrate;
	@NonNull private BigDecimal protein;
	@NonNull private BigDecimal fat;
	@NonNull private BigDecimal sugar;
	@NonNull private BigDecimal ca;
	@NonNull private BigDecimal fe;
	@NonNull private BigDecimal mg;
	@NonNull private BigDecimal na;
	@NonNull private BigDecimal k;
	@NonNull private BigDecimal vitaminB;
	@NonNull private BigDecimal vitaminC;
}

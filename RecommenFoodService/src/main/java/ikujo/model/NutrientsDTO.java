package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class NutrientsDTO {

	private BigDecimal nutid;
	private String label;
	private String nutnm;
	private String img;
	private BigDecimal score;
	private String link;
	private String price;
}

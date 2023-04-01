package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class NutrientsRegistDTO {
	
	private BigDecimal seqNum;
	@NonNull private String userId;
	@NonNull private BigDecimal nutId;
	@NonNull private String nutNm;
	private BigDecimal u_date;

}

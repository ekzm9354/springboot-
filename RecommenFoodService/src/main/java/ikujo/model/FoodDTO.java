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
public class FoodDTO {

	private BigDecimal indexu;
	@NonNull private String udate;
	@NonNull private String userid;
	private String userpw;
	@NonNull private String userNm;
	@NonNull private String foodNm;
	public FoodDTO(@NonNull String userid, @NonNull String userNm, @NonNull String foodNm) {
		this.userid = userid;
		this.userNm = userNm;
		this.foodNm = foodNm;
	}
	
}

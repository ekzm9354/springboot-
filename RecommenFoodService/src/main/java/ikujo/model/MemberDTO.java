package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberDTO {
	@NonNull
	private String userid;
	@NonNull
	private String userpw;
	private String userNm;
	private String gender;
	private String age;

}

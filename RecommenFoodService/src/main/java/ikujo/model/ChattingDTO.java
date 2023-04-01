package ikujo.model;


import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public class ChattingDTO {
	private BigDecimal c_seq;
	private Timestamp c_date;
//	받는 사람
	private String toName;
	// 보내는 사람
	private String fromName;
	private String messeges;

	

	public ChattingDTO(String toName, String fromName, String messeges) {
		this.toName = toName;
		this.fromName = fromName;
		this.messeges = messeges;
	}

	public ChattingDTO(String toName, String fromName) {
		this.toName = toName;
		this.fromName = fromName;
	}

}

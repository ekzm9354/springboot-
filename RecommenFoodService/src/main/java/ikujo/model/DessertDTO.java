package ikujo.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class DessertDTO {

	private BigDecimal dessertid;
	private String dname;
	private String label;
	private String img;
}

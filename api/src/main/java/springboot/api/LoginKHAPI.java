package springboot.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import springboot.dto.KhachHangDTO;
import springboot.dto.LoginKHDTO;
import springboot.entity.KhachHangEntity;
import springboot.repository.KhachHangRepository;

@RestController
public class LoginKHAPI {

	@Autowired
	KhachHangRepository khrepo;


	@PostMapping(value = "/loginkh")
	public LoginKHDTO checkUserNameAndPass(@RequestBody KhachHangDTO model) {

	
		KhachHangEntity user = khrepo.findByUserNameAndPasswdAndTrangThai(model.getUserName(),model.getPasswd(),1);
		if (user==null) {
		return null;
		}
		else {
			
			LoginKHDTO e=new LoginKHDTO();
			e.setMaKH(user.getMaKH());
			e.setDiaChi(user.getDiaChi());
			e.setGioiTinh(user.getGioiTinh());
			e.setHoTen(user.getHoTen());
			e.setNgaySinh(user.getNgaySinh());
			e.setSdt(user.getSdt());
			e.setEmail(user.getEmail());
			e.setIcon(user.getIcon());
			e.setPasswd(user.getPasswd());
			e.setUserName(user.getUserName());
			e.setTrangThai(user.getTrangThai());
			return e;
		}
	}
	
	

	

}

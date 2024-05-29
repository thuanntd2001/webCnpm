package springboot.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import springboot.dto.MyUser;
import springboot.entity.ChucVuEntity;
import springboot.entity.KhachHangEntity;
import springboot.entity.NhanVienEntity;
import springboot.repository.KhachHangRepository;
import springboot.repository.NhanVienRepository;

@Service(value = "userCustomService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private NhanVienRepository nvRepository;

	@Autowired
	private KhachHangRepository khRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		NhanVienEntity NhanVien = nvRepository.findOneByUserNameAndTrangThai(username, 1);
		KhachHangEntity KhachHang = khRepository.findOneByUserNameAndTrangThai(username, 1);

		if (NhanVien != null) {
			List<GrantedAuthority> authorities = new ArrayList<>();
			for (ChucVuEntity item : NhanVien.getChucVus()) {
				authorities.add(new SimpleGrantedAuthority("ROLE_" + item.getTenChucVu()));
			}
			MyUser myUserDetail = new MyUser(NhanVien.getUserName(), NhanVien.getPasswd(), true, true, true,
					true, authorities);
			BeanUtils.copyProperties(NhanVien, myUserDetail);
			return myUserDetail;
		} 
		
		else if (KhachHang!=null) {
			throw new UsernameNotFoundException("Chua lam khach hang");

		}
		
		else {
			throw new UsernameNotFoundException("User not found");
		}
	}
}

//20190941 ��ǻ���а� ����
package week12.Practice32;

import java.util.ArrayList;
import java.util.List;

public class AddrManger {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
}


import com.team01.domain.ContractInfo;
import com.team01.service.IContractInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})
public class ContractTest {
    @Autowired
    IContractInfoService iContractInfoService;

    @Test
    public void queryContractInfoTest(){
        ContractInfo contactInfo=iContractInfoService.queryContractInfo(1);
        System.out.println(contactInfo);
    }

    @Test
    public void queryAllContractInfoTest(){
        List<ContractInfo> infos= iContractInfoService.queryAllContactInfo();
        System.out.println(infos);
    }

    @Test
    public void insertContractTest(){
        ContractInfo contractInfo=new ContractInfo();
        contractInfo.setContractName("微服务租赁合同");
        contractInfo.setPartyA("代先生");
        contractInfo.setPartyB("华迪公司");
        contractInfo.setStartTime("2021-5-6");
        contractInfo.setDeadline("2021-8-6");
        contractInfo.setRent(2421);
        iContractInfoService.addContractInfo(contractInfo);
    }

    @Test
    public void deleteContractTest(){
        iContractInfoService.deleteContractInfo(4);

    }

    @Test
    public void updateContractTest(){
        ContractInfo contractInfo=new ContractInfo("租赁","钟先生","华迪公司","2020-5-1","2021-7-1",700);
        contractInfo.setContractId(1);
        iContractInfoService.updateContractInfo(contractInfo);

    }





}

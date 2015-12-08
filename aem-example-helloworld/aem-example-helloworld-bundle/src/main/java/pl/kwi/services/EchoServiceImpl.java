package pl.kwi.services;

import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.osgi.framework.BundleException;
import org.osgi.framework.Constants;
import org.osgi.service.component.ComponentContext;

@Service
@Component(immediate = true, metatype = true)
@Properties({
	@Property(name = Constants.SERVICE_DESCRIPTION, value = "Service for display message from context and text from code"),
    @Property(name = "echoService.message", value = "Default message", description = "Message which will be displayed together with text from code")
})
public class EchoServiceImpl implements EchoService {
		
	private String message;
	
	@Activate
	public void activate(ComponentContext context) throws BundleException {
		message = (String) context.getProperties().get("echoService.message");
	}

	public void displayMessageAndText(String text) {
		
		System.out.println(message + ": " + text);

	}

}

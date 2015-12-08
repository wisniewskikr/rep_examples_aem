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
	@Property(name = Constants.SERVICE_DESCRIPTION, value = "Service for logging"),
    @Property(name = "logService.description", value = "Default description", description = "Description which will be displayed in text together with text")
})
public class LogServiceImpl implements LogService {
		
	private String description;
	
	@Activate
	public void activate(ComponentContext context) throws BundleException {
		description = (String) context.getProperties().get("logService.description");
	}

	public void logText(String text) {
		
		System.out.println(description + ": " + text);

	}

}

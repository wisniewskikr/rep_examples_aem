package pl.kwi.model.input;

import javax.inject.Inject;

import org.apache.sling.api.resource.Resource;
import org.apache.sling.models.annotations.Model;

import pl.kwi.model.abstr.AbstractSlingModel;

@Model(adaptables=Resource.class)
public class InputTitleModel extends AbstractSlingModel {
	
	
	@Inject
	private String textHelloWorld;
	
	
	public InputTitleModel(Resource resource) {
		super(resource);
	}

	
	public String getTextHelloWorld() {
		return textHelloWorld;
	}
	public void setTextHelloWorld(String textHelloWorld) {
		this.textHelloWorld = textHelloWorld;
	}
	
	
}

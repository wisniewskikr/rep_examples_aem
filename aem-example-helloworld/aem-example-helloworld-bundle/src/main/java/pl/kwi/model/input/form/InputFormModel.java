package pl.kwi.model.input.form;

import javax.inject.Inject;

import org.apache.sling.api.resource.Resource;
import org.apache.sling.models.annotations.Model;

import pl.kwi.model.abstr.AbstractSlingModel;

@Model(adaptables=Resource.class)
public class InputFormModel extends AbstractSlingModel{
	
	
	@Inject
	private String submitTarget;
	
	
	public InputFormModel(Resource resource) {
		super(resource);
	}

	public String getSubmitTarget() {
		return submitTarget;
	}
	public void setSubmitTarget(String submitTarget) {
		this.submitTarget = submitTarget;
	}
			
}

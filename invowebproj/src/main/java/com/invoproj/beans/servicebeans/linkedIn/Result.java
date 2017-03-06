package com.invoproj.beans.servicebeans.linkedIn;

import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonAnyGetter;
import org.codehaus.jackson.annotate.JsonAnySetter;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.annotate.JsonPropertyOrder;
import org.codehaus.jackson.map.annotate.JsonSerialize;

@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
@JsonPropertyOrder({
"emailAddress",
"firstName",
"formattedName",
"headline",
"id",
"industry",
"lastName",
"location",
"pictureUrl",
"positions",
"publicProfileUrl",
"siteStandardProfileRequest"
})
public class Result {

@JsonProperty("emailAddress")
private String emailAddress;
@JsonProperty("firstName")
private String firstName;
@JsonProperty("formattedName")
private String formattedName;
@JsonProperty("headline")
private String headline;
@JsonProperty("id")
private String id;
@JsonProperty("industry")
private String industry;
@JsonProperty("lastName")
private String lastName;
@JsonProperty("location")
private Location location;
@JsonProperty("pictureUrl")
private String pictureUrl;
@JsonProperty("positions")
private Positions positions;
@JsonProperty("publicProfileUrl")
private String publicProfileUrl;
@JsonProperty("siteStandardProfileRequest")
private SiteStandardProfileRequest siteStandardProfileRequest;
@JsonIgnore
private Map<String, Object> additionalProperties = new HashMap<String, Object>();

@JsonProperty("emailAddress")
public String getEmailAddress() {
return emailAddress;
}

@JsonProperty("emailAddress")
public void setEmailAddress(String emailAddress) {
this.emailAddress = emailAddress;
}

@JsonProperty("firstName")
public String getFirstName() {
return firstName;
}

@JsonProperty("firstName")
public void setFirstName(String firstName) {
this.firstName = firstName;
}

@JsonProperty("formattedName")
public String getFormattedName() {
return formattedName;
}

@JsonProperty("formattedName")
public void setFormattedName(String formattedName) {
this.formattedName = formattedName;
}

@JsonProperty("headline")
public String getHeadline() {
return headline;
}

@JsonProperty("headline")
public void setHeadline(String headline) {
this.headline = headline;
}

@JsonProperty("id")
public String getId() {
return id;
}

@JsonProperty("id")
public void setId(String id) {
this.id = id;
}

@JsonProperty("industry")
public String getIndustry() {
return industry;
}

@JsonProperty("industry")
public void setIndustry(String industry) {
this.industry = industry;
}

@JsonProperty("lastName")
public String getLastName() {
return lastName;
}

@JsonProperty("lastName")
public void setLastName(String lastName) {
this.lastName = lastName;
}

@JsonProperty("location")
public Location getLocation() {
return location;
}

@JsonProperty("location")
public void setLocation(Location location) {
this.location = location;
}

@JsonProperty("pictureUrl")
public String getPictureUrl() {
return pictureUrl;
}

@JsonProperty("pictureUrl")
public void setPictureUrl(String pictureUrl) {
this.pictureUrl = pictureUrl;
}

@JsonProperty("positions")
public Positions getPositions() {
return positions;
}

@JsonProperty("positions")
public void setPositions(Positions positions) {
this.positions = positions;
}

@JsonProperty("publicProfileUrl")
public String getPublicProfileUrl() {
return publicProfileUrl;
}

@JsonProperty("publicProfileUrl")
public void setPublicProfileUrl(String publicProfileUrl) {
this.publicProfileUrl = publicProfileUrl;
}

@JsonProperty("siteStandardProfileRequest")
public SiteStandardProfileRequest getSiteStandardProfileRequest() {
return siteStandardProfileRequest;
}

@JsonProperty("siteStandardProfileRequest")
public void setSiteStandardProfileRequest(SiteStandardProfileRequest siteStandardProfileRequest) {
this.siteStandardProfileRequest = siteStandardProfileRequest;
}

@JsonAnyGetter
public Map<String, Object> getAdditionalProperties() {
return this.additionalProperties;
}

@JsonAnySetter
public void setAdditionalProperty(String name, Object value) {
this.additionalProperties.put(name, value);
}

}
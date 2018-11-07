package org.example.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

@HippoEssentialsGenerated(internalName = "myhippoproject:product")
@Node(jcrType = "myhippoproject:product")
public class Product extends BaseDocument {
    @HippoEssentialsGenerated(internalName = "myhippoproject:title")
    public String getTitle() {
        return getProperty("myhippoproject:title");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:introduction")
    public String getIntroduction() {
        return getProperty("myhippoproject:introduction");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:price")
    public Double getPrice() {
        return getProperty("myhippoproject:price");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:rating")
    public Double getRating() {
        return getProperty("myhippoproject:rating");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:instock")
    public Long getInstock() {
        return getProperty("myhippoproject:instock");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:categories")
    public String[] getCategories() {
        return getProperty("myhippoproject:categories");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:description")
    public HippoHtml getDescription() {
        return getHippoHtml("myhippoproject:description");
    }
}

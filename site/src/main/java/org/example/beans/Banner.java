package org.example.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoBean;
import org.example.beans.Gogreenimageset;

@HippoEssentialsGenerated(internalName = "myhippoproject:bannerdocument")
@Node(jcrType = "myhippoproject:bannerdocument")
public class Banner extends BaseDocument {
    @HippoEssentialsGenerated(internalName = "myhippoproject:title")
    public String getTitle() {
        return getProperty("myhippoproject:title");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:content")
    public HippoHtml getContent() {
        return getHippoHtml("myhippoproject:content");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:link")
    public HippoBean getLink() {
        return getLinkedBean("myhippoproject:link", HippoBean.class);
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:image")
    public Gogreenimageset getImage() {
        return getLinkedBean("myhippoproject:image", Gogreenimageset.class);
    }
}

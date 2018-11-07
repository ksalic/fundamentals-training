package org.example.beans;

import java.util.Calendar;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoDocument;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.example.beans.Gogreenimageset;

@HippoEssentialsGenerated(internalName = "myhippoproject:newsdocument")
@Node(jcrType = "myhippoproject:newsdocument")
public class NewsDocument extends HippoDocument {
    /** 
     * The document type of the news document.
     */
    public static final String DOCUMENT_TYPE = "myhippoproject:newsdocument";
    private static final String TITLE = "myhippoproject:title";
    private static final String DATE = "myhippoproject:date";
    private static final String INTRODUCTION = "myhippoproject:introduction";
    private static final String IMAGE = "myhippoproject:image";
    private static final String CONTENT = "myhippoproject:content";
    private static final String LOCATION = "myhippoproject:location";
    private static final String AUTHOR = "myhippoproject:author";
    private static final String SOURCE = "myhippoproject:source";

    /** 
     * Get the title of the document.
     * @return the title
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:title")
    public String getTitle() {
        return getProperty(TITLE);
    }

    /** 
     * Get the date of the document.
     * @return the date
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:date")
    public Calendar getDate() {
        return getProperty(DATE);
    }

    /** 
     * Get the introduction of the document.
     * @return the introduction
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:introduction")
    public String getIntroduction() {
        return getProperty(INTRODUCTION);
    }

    /** 
     * Get the main content of the document.
     * @return the content
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:content")
    public HippoHtml getContent() {
        return getHippoHtml(CONTENT);
    }

    /** 
     * Get the location of the document.
     * @return the location
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:location")
    public String getLocation() {
        return getProperty(LOCATION);
    }

    /** 
     * Get the author of the document.
     * @return the author
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:author")
    public String getAuthor() {
        return getProperty(AUTHOR);
    }

    /** 
     * Get the source of the document.
     * @return the source
     */
    @HippoEssentialsGenerated(internalName = "myhippoproject:source")
    public String getSource() {
        return getProperty(SOURCE);
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:image")
    public Gogreenimageset getImage() {
        return getLinkedBean("myhippoproject:image", Gogreenimageset.class);
    }
}

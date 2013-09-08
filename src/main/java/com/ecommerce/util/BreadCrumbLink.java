package com.ecommerce.util;

import java.util.LinkedList;
import java.util.List;

public class BreadCrumbLink
{
  private BreadCrumbLink previous;
  private List<BreadCrumbLink> next = new LinkedList();
  private String url;
  private String family;
  private String label;
  boolean currentPage;
  private String parentKey;
  private BreadCrumbLink parent;
  
  public BreadCrumbLink(String family, String label, boolean currentPage, String parentKey) {
    this.family = family;
    this.label = label;
    this.currentPage = currentPage;
    this.parentKey = parentKey;
  }
  
  public BreadCrumbLink getPrevious() {
    return this.previous;
  }
  
  public void setPrevious(BreadCrumbLink previous) {
    this.previous = previous;
  }
  
  public List<BreadCrumbLink> getNext() {
    return this.next;
  }
  
  public void addNext(BreadCrumbLink next) {
    this.next.add(next);
  }
  
  public String getUrl() {
    return this.url;
  }
  
  public void setUrl(String url) {
    this.url = url;
  }
  
  public String getFamily() {
    return this.family;
  }
  
  public void setFamily(String family) {
    this.family = family;
  }
  
  public String getLabel() {
    return this.label;
  }
  
  public void setLabel(String label) {
    this.label = label;
  }
  
  public boolean isCurrentPage() {
    return this.currentPage;
  }
  
  public void setCurrentPage(boolean currentPage) {
    this.currentPage = currentPage;
  }
  
  public String getParentKey() {
    return this.parentKey;
  }
  
  public void setParentKey(String parentKey) {
    this.parentKey = parentKey;
  }
  
  public BreadCrumbLink getParent() {
    return this.parent;
  }
  
  public void setParent(BreadCrumbLink parent) {
    this.parent = parent;
  }
}
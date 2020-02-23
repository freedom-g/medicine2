package tree;


import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2020/2/21.
 */
public class Ping {

    public Object id;

    public List list = new ArrayList();

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Object getId() {
        return id;
    }

    public void setId(Object id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Ping{" +
                "id=" + id +
                ", list=" + list +
                '}';
    }
}

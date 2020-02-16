package result;

import tree.CatDate;

import java.util.List;

public class ResultData {

	private List<CatDate> data;

    public List<CatDate> getData() {
        return data;
    }

    public void setData(List<CatDate> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ResultData{" +
                "data=" + data +
                '}';
    }
}

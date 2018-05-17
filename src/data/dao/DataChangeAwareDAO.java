package data.dao;

public interface DataChangeAwareDAO {

    void notifyDataChangeListeners();

    void addDataChangeListener(DataChangeListener listener);

    void removeDataChangeListener(DataChangeListener listener);

}

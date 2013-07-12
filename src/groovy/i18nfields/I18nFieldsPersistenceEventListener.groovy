package i18nfields

import org.grails.datastore.mapping.core.Datastore
import org.grails.datastore.mapping.engine.event.*

class I18nFieldsPersistenceEventListener extends AbstractPersistenceEventListener{

    public I18nFieldsPersistenceEventListener(final Datastore datastore) {
        super(datastore)
    }
    
    @Override
    protected void onPersistenceEvent(final AbstractPersistenceEvent event) {
        switch(event.eventType) {
            case 'PostInsert':
                onPostInsert(event)
                break
            case 'PostUpdate':
                onPostUpdate(event)
                break;
            case 'PostDelete':
                onPostDelete(event)
                break;
        }
    }
    
    protected void onPostInsert(event) { saveEntity(event.entityObject); }
    protected void onPostUpdate(event) { saveEntity(event.entityObject); }
    protected void onPostDelete(event) { deleteEntity(event.entityObject); }
    
    /**
     * Persist entity values.
     * At this point entity should have a id
     */
    protected void saveEntity(entity) {
        if(!entity.hasProperty(I18nFields.I18N_FIELDS)) return; // Entity should have i18n
        // TODO: test if a i18n field is dirty
        I18nFieldsHelper.pushAll(entity)
    }
    
    /**
     * Delete a entity.
     * At this point the entity should ahve a id
     */
    protected void deleteEntity(entity) {
        if(!entity.hasProperty(I18nFields.I18N_FIELDS)) return; // Entity should have i18n
        I18nFieldsHelper.delete(entity)
    }
    
    @Override
    public boolean supportsEventType(Class eventType) {
        return AbstractPersistenceEvent.class.isAssignableFrom(eventType)
    }
}

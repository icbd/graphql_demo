class RecordLoader < GraphQL::Batch::Loader
  attr_reader :model, :association_name, :scope

  def initialize(model, association_name, scope = nil)
    @model = model
    @association_name = association_name
    @scope = scope
  end

  def perform(records)
    ::ActiveRecord::Associations::Preloader.new.preload(records, association_name, scope)

    records.each { |record| fulfill record, record.public_send(association_name) }
  end
end

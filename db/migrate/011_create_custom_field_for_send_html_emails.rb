class CreateCustomFieldForSendHtmlEmails < ActiveRecord::Migration[5.2]
  def self.up
    c = CustomField.new(
      :name => 'helpdesk-send-html-emails',
      :editable => true,
      :visible => false,          # do not show it on the project summary page
      :field_format => 'bool')
    c.type = 'ProjectCustomField' # cannot be set by mass assignement!
    c.save
  end

  def self.down
    CustomField.find_by_name('helpdesk-send-html-emails').delete
  end
end

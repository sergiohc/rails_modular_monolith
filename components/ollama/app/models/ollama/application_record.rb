# frozen_string_literal: true

module Ollama
  # Base class for all Ollama models
  class ApplicationRecord < ::ApplicationRecord
    self.abstract_class = true
    self.table_name_prefix = 'ollama_'

    connects_to database: { writing: :ollama, reading: :ollama }
  end
end

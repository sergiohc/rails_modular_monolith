# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `langchainrb_rails` gem.
# Please instead update this file by running `bin/tapioca gem langchainrb_rails`.


# Overriding Langchain.rb's Pgvector implementation to use ActiveRecord.
# Original implementation: https://github.com/andreibondarev/langchainrb/blob/main/lib/langchain/vectorsearch/pgvector.rb
#
# source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#0
module Langchain::Vectorsearch; end

# source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#7
class Langchain::Vectorsearch::Pgvector < ::Langchain::Vectorsearch::Base
  # @param url [String] The URL of the PostgreSQL database
  # @param index_name [String] The name of the table to use for the index
  # @param llm [Object] The LLM client to use
  # @param namespace [String] The namespace to use for the index when inserting/querying
  # @return [Pgvector] a new instance of Pgvector
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#25
  def initialize(llm:); end

  # Add a list of texts to the index
  #
  # @param texts [Array<String>] The texts to add to the index
  # @param ids [Array<String>] The ids to add to the index, in the same order as the texts
  # @return [Array<Integer>] The the ids of the added texts.
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#40
  def add_texts(texts:, ids:); end

  # Ask a question and return the answer
  #
  # @param question [String] The question to ask
  # @param k [Integer] The number of results to have in context
  # @return [String] The answer to the question
  # @yield [String] Stream responses back one String at a time
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#100
  def ask(question:, k: T.unsafe(nil), &block); end

  # Invoke a rake task that will create an initializer (`config/initializers/langchain.rb`) file
  # and db/migrations/* files
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#60
  def create_default_schema; end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#24
  def db; end

  # Destroy default schema
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#65
  def destroy_default_schema; end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#45
  def documents_model; end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#24
  def documents_table; end

  # The PostgreSQL vector search adapter
  #
  # Gem requirements:
  #     gem "pgvector", "~> 0.2"
  #
  # Usage:
  #     pgvector = Langchain::Vectorsearch::Pgvector.new(llm:)
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#18
  def llm; end

  # Returns the value of attribute model.
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#19
  def model; end

  # Sets the attribute model
  #
  # @param value the value to set the attribute model to.
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#19
  def model=(_arg0); end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#24
  def namespace; end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#24
  def namespace_column; end

  # The PostgreSQL vector search adapter
  #
  # Gem requirements:
  #     gem "pgvector", "~> 0.2"
  #
  # Usage:
  #     pgvector = Langchain::Vectorsearch::Pgvector.new(llm:)
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#18
  def operator; end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#96
  def remove_texts(ids:); end

  # Search for similar texts in the index
  # TODO - drop the named "query:" param so it is the same interface as #ask?
  #
  # @param query [String] The text to search for
  # @param k [Integer] The number of top results to return
  # @return [Array<Hash>] The results of the search
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#74
  def similarity_search(query:, k: T.unsafe(nil)); end

  # Search for similar texts in the index by the passed in vector.
  # You must generate your own vector using the same LLM that generated the embeddings stored in the Vectorsearch DB.
  # TODO - drop the named "embedding:" param so it is the same interface as #ask?
  #
  # @param embedding [Array<Float>] The vector to search for
  # @param k [Integer] The number of top results to return
  # @return [Array<Hash>] The results of the search
  #
  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#89
  def similarity_search_by_vector(embedding:, k: T.unsafe(nil)); end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#24
  def table_name; end

  # source://langchainrb_rails//lib/langchainrb_overrides/vectorsearch/pgvector.rb#54
  def update_texts(texts:, ids:); end

  # source://langchainrb/0.13.3/lib/langchain/vectorsearch/pgvector.rb#56
  def upsert_texts(texts:, ids:); end
end

# source://langchainrb_rails//lib/langchainrb_rails/version.rb#3
module LangchainrbRails
  class << self
    # @return [Config] The global configuration object
    #
    # source://langchainrb_rails//lib/langchainrb_rails.rb#35
    def config; end

    # Configures global settings for LangchainrbRails
    #     LangchainrbRails.configure do |config|
    #       config.vectorsearch = ...
    #     end
    #
    # @yield [config]
    #
    # source://langchainrb_rails//lib/langchainrb_rails.rb#30
    def configure; end
  end
end

# source://langchainrb_rails//lib/langchainrb_rails.rb#14
module LangchainrbRails::ActiveRecord; end

# This module adds the following functionality to your ActiveRecord models:
# * `vectorsearch` class method to set the vector search provider
# * `similarity_search` class method to search for similar texts
# * `upsert_to_vectorsearch` instance method to upsert the record to the vector search provider
#
# Usage:
#     class Recipe < ActiveRecord::Base
#       vectorsearch
#
#       after_save :upsert_to_vectorsearch
#
#       # Overwriting how the model is serialized before it's indexed
#       def as_vector
#         [
#           "Title: #{title}",
#           "Description: #{description}",
#           ...
#         ]
#         .compact
#         .join("\n")
#       end
#     end
#
# Create the default schema
#     Recipe.class_variable_get(:@@provider).create_default_schema
# Query the vector search provider
#     Recipe.similarity_search("carnivore dish")
# Delete the default schema to start over
#     Recipe.class_variable_get(:@@provider).destroy_default_schema
#
# source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#35
module LangchainrbRails::ActiveRecord::Hooks
  mixes_in_class_methods ::LangchainrbRails::ActiveRecord::Hooks::ClassMethods

  # Used to serialize the DB record to an indexable vector text
  # Overwrite this method in your model to customize
  #
  # @return [String] the text representation of the model
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#63
  def as_vector; end

  # Index the text to the vector search provider
  # You'd typically call this method in an ActiveRecord callback
  #
  # @raise [Error] Indexing to vector search DB failed
  # @return [Boolean] true
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#45
  def upsert_to_vectorsearch; end

  class << self
    # @private
    #
    # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#36
    def included(base); end
  end
end

# source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#69
module LangchainrbRails::ActiveRecord::Hooks::ClassMethods
  # Ask a question and return the answer
  #
  # standard:disable Style/ArgumentsForwarding
  #
  # @param question [String] The question to ask
  # @param k [Integer] The number of results to have in context
  # @return [String] The answer to the question
  # @yield [String] Stream responses back one String at a time
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#116
  def ask(question, k: T.unsafe(nil), &block); end

  # Iterates over records and generate embeddings.
  # Will re-generate for ALL records (not just records with embeddings).
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#85
  def embed!; end

  # Search for similar texts
  #
  # @param query [String] The query to search for
  # @param k [Integer] The number of results to return
  # @return [ActiveRecord::Relation] The ActiveRecord relation
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#96
  def similarity_search(query, k: T.unsafe(nil)); end

  # Set the vector search provider
  #
  # @param provider [Object] The `Langchain::Vectorsearch::*` instance
  #
  # source://langchainrb_rails//lib/langchainrb_rails/active_record/hooks.rb#73
  def vectorsearch; end
end

# source://langchainrb_rails//lib/langchainrb_rails/config.rb#4
class LangchainrbRails::Config
  # @return [Config] a new instance of Config
  #
  # source://langchainrb_rails//lib/langchainrb_rails/config.rb#13
  def initialize; end

  # This class is used to configure the gem config inside Rails apps, in the `config/initializers/langchainrb_rails.rb` file.
  #
  # Langchain is configured in the following way:
  #     LangchainrbRails.configure do |config|
  #       config.vectorsearch = ...
  #     end
  #
  # source://langchainrb_rails//lib/langchainrb_rails/config.rb#11
  def vectorsearch; end

  # This class is used to configure the gem config inside Rails apps, in the `config/initializers/langchainrb_rails.rb` file.
  #
  # Langchain is configured in the following way:
  #     LangchainrbRails.configure do |config|
  #       config.vectorsearch = ...
  #     end
  #
  # source://langchainrb_rails//lib/langchainrb_rails/config.rb#11
  def vectorsearch=(_arg0); end
end

# source://langchainrb_rails//lib/langchainrb_rails.rb#12
class LangchainrbRails::Error < ::StandardError; end

# source://langchainrb_rails//lib/langchainrb_rails.rb#18
module LangchainrbRails::Generators; end

# source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/base_generator.rb#6
class LangchainrbRails::Generators::BaseGenerator < ::Rails::Generators::Base
  include ::Rails::Generators::Migration
  include ::ActiveRecord::Generators::Migration
  extend ::Rails::Generators::Migration::ClassMethods
  extend ::ActiveRecord::Generators::Migration::ClassMethods

  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/base_generator.rb#23
  def post_install_message; end
end

# Available LLM providers to be passed in as --llm option
#
# source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/base_generator.rb#13
LangchainrbRails::Generators::BaseGenerator::LLMS = T.let(T.unsafe(nil), Hash)

# ChromaGenerator does the following:
# 1. Creates the `langchainrb_rails.rb` initializer file
# 2. Adds necessary code to the ActiveRecord model to enable vectorsearch
# 3. Adds `chroma-db` gem to the Gemfile
#
# Usage:
#     rails generate langchainrb_rails:chrome --model=Product --llm=openai
#
# source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#14
class LangchainrbRails::Generators::ChromaGenerator < ::LangchainrbRails::Generators::BaseGenerator
  # Adds `chroma-db` gem to the Gemfile
  # TODO: Can we automatically run `bundle install`?
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#32
  def add_to_gemfile; end

  # Adds `vectorsearch` class method to the model and `after_save` callback that calls `upsert_to_vectorsearch()`
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#24
  def add_to_model; end

  # Creates the `langchainrb_rails.rb` initializer file
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#19
  def create_initializer_file; end

  private

  # @return [String] LLM provider to use
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#44
  def llm; end

  # @return [Langchain::LLM::*] LLM class
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#49
  def llm_class; end

  # @return [String] Name of the model
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/chroma_generator.rb#39
  def model_name; end
end

# Usage:
#     rails generate langchainrb_rails:pgvector --model=Product --llm=openai
#
# source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#9
class LangchainrbRails::Generators::PgvectorGenerator < ::LangchainrbRails::Generators::BaseGenerator
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#32
  def add_to_gemfile; end

  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#26
  def add_to_model; end

  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#13
  def copy_migration; end

  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#18
  def create_initializer_file; end

  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#22
  def migration_version; end

  private

  # @return [String] LLM provider to use
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#51
  def llm; end

  # @return [Langchain::LLM::*] LLM class
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#56
  def llm_class; end

  # @return [String] Name of the model
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#41
  def model_name; end

  # @return [String] Table name of the model
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#46
  def table_name; end

  # @return [Integer] Dimension of the vector to be used
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/pgvector_generator.rb#61
  def vector_dimensions; end
end

# PineconeGenerator does the following:
# 1. Creates the `langchainrb_rails.rb` initializer file
# 2. Adds necessary code to the ActiveRecord model to enable vectorsearch
# 3. Adds `qdrant-ruby` gem to the Gemfile
#
# Usage:
#     rails generate langchainrb_rails:qdrant --model=Product --llm=openai
#
# source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#14
class LangchainrbRails::Generators::QdrantGenerator < ::LangchainrbRails::Generators::BaseGenerator
  # Adds `qdrant-ruby` gem to the Gemfile
  # TODO: Can we automatically run `bundle install`?
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#32
  def add_to_gemfile; end

  # Adds `vectorsearch` class method to the model and `after_save` callback that calls `upsert_to_vectorsearch()`
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#24
  def add_to_model; end

  # Creates the `langchainrb_rails.rb` initializer file
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#19
  def create_initializer_file; end

  private

  # @return [String] LLM provider to use
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#44
  def llm; end

  # @return [Langchain::LLM::*] LLM class
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#49
  def llm_class; end

  # @return [String] Name of the model
  #
  # source://langchainrb_rails//lib/langchainrb_rails/generators/langchainrb_rails/qdrant_generator.rb#39
  def model_name; end
end

# source://langchainrb_rails//lib/langchainrb_rails/railtie.rb#4
class LangchainrbRails::Railtie < ::Rails::Railtie; end

# source://langchainrb_rails//lib/langchainrb_rails/version.rb#4
LangchainrbRails::VERSION = T.let(T.unsafe(nil), String)

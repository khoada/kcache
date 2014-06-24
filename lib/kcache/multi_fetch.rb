module Kcache
  module MultiFetch
    def self.fetch_multi k, objects
      results = {}
      keys = objects.collect { |o| "#{o.class.base_class.name.downcase}/#{o.id.to_s}/#{k}" }
      hits = Rails.cache.read_multi(*keys)
      keys.each_with_index do |key, i|
        results[objects[i].id.to_i] = if hits.include?(key)
                                  hits[key]
                                else
                                  objects[i].try(k)
                                end
      end
      results
    end
  end
end

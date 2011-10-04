atom_feed do |feed|
	feed.title("Lucia's World")
	feed.updated(@posts.first.created_at)

	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.counter(post.body, :type => 'html')
			entry.author { |author| author.name("Lucia") }
		end
	end
end

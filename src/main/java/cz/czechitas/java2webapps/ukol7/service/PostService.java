package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PostService {
    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    /**
     * Returns list of all posts.
     *
     * @return List of all posts.
     */
    public Page<Post> list() {
        Pageable pageable = PageRequest.of(0,20);
        return postRepository.findBeforeToday(pageable);

    }

    /**
     * Returns one post.
     *
     * @param slug Slug of the post.
     * @return Post or {@code null}.
     */
    public Post singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }
}
